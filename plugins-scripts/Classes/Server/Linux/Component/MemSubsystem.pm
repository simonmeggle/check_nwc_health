package Classes::Server::Linux::Component::MemSubsystem;
our @ISA = qw(Classes::Server::Linux);
use strict;

sub new {
  my $class = shift;
  my $self = {};
  bless $self, $class;
  $self->init();
  return $self;
}

sub init {
  my $self = shift;
  $self->{mem_subsystem} =
      Classes::UCDMIB::Component::MemSubsystem->new();
  $self->{swap_subsystem} =
      Classes::UCDMIB::Component::SwapSubsystem->new();
}

sub check {
  my $self = shift;
  $self->{mem_subsystem}->check();
  $self->{swap_subsystem}->check();
}

sub dump {
  my $self = shift;
  $self->{mem_subsystem}->dump();
  $self->{swap_subsystem}->dump();
}


1;
