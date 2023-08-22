part of 'editprofile_cubit.dart';

@immutable
sealed class EditprofileState {}

final class EditprofileInitial extends EditprofileState {}
final class EditprofilesuccessGetimage extends EditprofileState {}
final class Editprofilesucceschangenameandbio extends EditprofileState {}
final class EditprofilefauilerGetimagesucess extends EditprofileState {}
final class Editprofilefauilerchangenameandbio extends EditprofileState {}
