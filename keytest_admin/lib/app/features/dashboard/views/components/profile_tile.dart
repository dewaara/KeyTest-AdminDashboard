part of dashboard;

class _ProfilTile extends StatelessWidget {
  const _ProfilTile(
      {required this.data, required this.onPressedNotification, Key? key})
      : super(key: key);

  final _Profile data;
  final Function() onPressedNotification;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CircleAvatar(backgroundImage: data.photo),
      title: Text(
        data.name,
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: kFontColorPallets[3]),
      ),
      subtitle: Text(
        data.email,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500,fontStyle: FontStyle.italic, color: kFontColorPallets[2]),
      ),
      trailing: IconButton(
        onPressed: onPressedNotification,
        icon: const Icon(EvaIcons.bellOutline),
        tooltip: "notification",
        color: kFontColorPallets[3],
      ),
    );
  }
}
