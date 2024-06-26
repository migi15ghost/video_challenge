import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_challenge/home/bloc/home_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_challenge/home/page/description_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return RepositoryProvider<HomeBloc>(
      create: (context) => HomeBloc()..add(const PlayVideoEvent()),
      child: const _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  const _Page();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {},
        child: SafeArea(child: _Body()),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {


        if(state is LoadedPhoneVideoState){
          return Container(
            width: width,
            height: height,
            color: const Color(0xFF2861A1),
            child: const Stack(
              children: [

              ],
            ),
          );

        }

        if (state is LoadedVideoState) {
          return Container(
            width: width,
            height: height,
            color: const Color(0xFF272F3A),
            child: Stack(
              children: [
                /*Positioned(
                    top: 0,
                    right: 0,
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<HomeBloc>().add(const IntroEvent(1));
                      },
                      child: const Text('Press'),
                    )),*/
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: DescriptionWidget(
                    height: height,
                    width: width,
                    animation: state.animation,
                  )
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: state.animation),
                    duration: const Duration(microseconds: 500000),
                    curve: Curves.easeIn,
                    builder: (_, double val, __) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(0, 3, -width * val),
                        child: SizedBox(
                          width: width * 0.73,
                          height: (width * 0.77) * 0.73,
                          //height: height,
                          child: SvgPicture.asset(
                            'assets/images/left1.svg',
                          ),
                        ),
                      );
                    }
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: state.animation),
                    duration: const Duration(microseconds: 500000),
                    curve: Curves.easeIn,
                    builder: (_, double val, __) {
                      return Transform(
                        transform: Matrix4.identity()
                          ..setEntry(0, 3, width * val),
                        child: SizedBox(
                          width: width * 0.73,
                          height: (width * 0.77) * 0.73,
                          //height: height,
                          child: SvgPicture.asset(
                            'assets/images/right1.svg',
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ],
            ),
          );
        }
        return const Text('no state');
      },
    );
  }
}
