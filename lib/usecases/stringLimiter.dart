extension StringLimiter on String {
  String limitquarter() {
    if (this.length > 15) {
      return this.substring(0, 15) + "...";
    }
    return this;
  }
}