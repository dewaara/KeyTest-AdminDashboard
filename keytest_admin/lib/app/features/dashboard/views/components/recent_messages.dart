part of dashboard;

class _RecentMessages extends StatelessWidget {
  const _RecentMessages({
    required this.onPressedMore,
    Key? key,
  }) : super(key: key);

  final Function() onPressedMore;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(EvaIcons.messageCircle,size: 35, color: Theme.of(context).cardColor,),
        const SizedBox(width: 10),
        Text(
          "Recent Messages",
          style: TextStyle(fontWeight: FontWeight.w600,color: Colors.pink),
        ),
        const Spacer(),
        IconButton(
          onPressed: onPressedMore,
          icon: const Icon(EvaIcons.moreVerticalOutline),
          tooltip: "more",
          color: kFontColorPallets[3],
        )
      ],
    );
  }
}
