import 'package:flutter/material.dart';
import '../core/models.dart';

class HorizontalTimeline extends StatelessWidget {
  final List<TimelineEntry> entries;
  final int selectedIndex;
  final ValueChanged<int> onItemTap;

  const HorizontalTimeline({
    super.key,
    required this.entries,
    required this.selectedIndex,
    required this.onItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color themeColor = Theme.of(context).iconTheme.color!;
    final Color lineColor = Theme.of(context).dividerColor;

    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(bottom: BorderSide(color: lineColor, width: 0.5)),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: List.generate(entries.length * 2 - 1, (index) {
            if (index.isEven) {
              final entryIndex = index ~/ 2;
              final entry = entries[entryIndex];
              final bool isYearZero = entry.isYearZero;
              final bool isSelected = entryIndex == selectedIndex;
              final bool isClickable = entry.key != null;

              return GestureDetector(
                onTap: isClickable
                    ? () {
                  onItemTap(entryIndex);
                  if (entry.key?.currentContext != null) {
                    Scrollable.ensureVisible(
                      entry.key!.currentContext!,
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeInOut,
                    );
                  }
                }
                    : null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isYearZero)
                      Text(
                        "0",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: themeColor),
                      )
                    else
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: isSelected ? 16 : 12,
                        height: isSelected ? 16 : 12,
                        decoration: BoxDecoration(
                          color: isSelected ? themeColor : Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: themeColor, width: 2),
                        ),
                      ),
                    const SizedBox(height: 8),
                    Text(
                      entry.label,
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected
                            ? themeColor
                            : themeColor.withAlpha(180),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                width: 30,
                height: 2,
                margin: const EdgeInsets.only(bottom: 14),
                color: lineColor,
              );
            }
          }),
        ),
      ),
    );
  }
}