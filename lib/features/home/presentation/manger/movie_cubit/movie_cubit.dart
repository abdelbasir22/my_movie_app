import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:my_movie_app/features/home/data/movie_model.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieInitial());
  MovieCubit get(context) => BlocProvider.of(context);

  final dio = Dio();

  int page = 1;
  List allMovies = [];

  void getMovies() async {
    emit(MovieLoading());
    try {
      final response = await dio.get(
          'https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=$page');
      var model = MovieModel.fromJson(response.data);
      allMovies = model.results;
      emit(MovieSuccess());
    } on DioException catch (e) {
      emit(
        MovieFailure(
          message: e.toString(),
        ),
      );
    }
  }

  void addPage() async {
    emit(MovieLoading());
    try {
      page++;

      final response = await dio.get(
          'https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=$page');
      var model = MovieModel.fromJson(response.data);
      allMovies = model.results;
      emit(MovieSuccess());
    } on DioException catch (e) {
      emit(
        MovieFailure(
          message: e.toString(),
        ),
      );
    }
  }

  void removePage() async {
    emit(MovieLoading());
    try {
      if (page > 1) {
        page--;
      }
      final response = await dio.get(
          'https://api.themoviedb.org/3/discover/movie?api_key=2001486a0f63e9e4ef9c4da157ef37cd&page=$page');
      var model = MovieModel.fromJson(response.data);
      allMovies = model.results;
      emit(MovieSuccess());
    } on DioException catch (e) {
      emit(
        MovieFailure(
          message: e.toString(),
        ),
      );
    }
  }
}
