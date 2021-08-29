.class public Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;
    }
.end annotation


# static fields
.field private static final DAY_UNIT_CHINA:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_GERMAN:Ljava/lang/String; = "."

.field private static final DAY_UNIT_JAPAN:Ljava/lang/String; = "\u65e5"

.field private static final DAY_UNIT_KOREA:Ljava/lang/String; = "\uc77c"

.field private static final YEAR_UNIT_CHINA:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_JAPAN:Ljava/lang/String; = "\u5e74"

.field private static final YEAR_UNIT_KOREA:Ljava/lang/String; = "\ub144"

.field private static sDateOrder:[C

.field private static sNow:Ljava/util/Calendar;

.field private static sOldDateOrderValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sNow:Ljava/util/Calendar;

    const-string v0, "null"

    .line 2
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sOldDateOrderValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendLanguageSpecificsToResult(Landroid/content/Context;JZLjava/lang/StringBuffer;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 3
    sget-object p2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    const-string p0, ", "

    .line 4
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p2, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p3, :cond_1

    const-string p0, " "

    .line 6
    invoke-virtual {p4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method private static formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 16

    move-wide/from16 v0, p1

    move/from16 v2, p3

    .line 1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "h:mm a"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, "dMy"

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 4
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 5
    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "yMd"

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 7
    :cond_1
    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->equals(JI[C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 8
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->getDateTime()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_2
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    and-int/lit8 v7, v2, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3

    move v7, v9

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_0
    and-int/lit8 v10, v2, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    move v10, v9

    goto :goto_1

    :cond_4
    move v10, v8

    :goto_1
    and-int/lit8 v11, v2, 0x10

    const/16 v12, 0x10

    if-ne v11, v12, :cond_5

    move v11, v9

    goto :goto_2

    :cond_5
    move v11, v8

    :goto_2
    if-eqz v7, :cond_6

    .line 10
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    if-nez v10, :cond_7

    if-nez v11, :cond_7

    .line 11
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 12
    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->update(JI[CLjava/lang/String;)V

    return-object v3

    :cond_7
    const-string v3, " "

    if-eqz v7, :cond_8

    const/16 v12, 0x200e

    .line 13
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0040

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    :cond_8
    sget-object v12, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    sget-object v12, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    .line 17
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 18
    :cond_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 19
    :cond_a
    invoke-static {v0, v1, v10, v11}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->getYearMonthDayStringSet(JZZ)Ljava/util/ArrayList;

    move-result-object v5

    const-string v12, ""

    move v13, v8

    .line 20
    :goto_3
    array-length v14, v4

    if-ge v13, v14, :cond_f

    .line 21
    aget-char v14, v4, v13

    const/16 v15, 0x4d

    if-eq v14, v15, :cond_d

    const/16 v15, 0x64

    if-eq v14, v15, :cond_c

    const/16 v15, 0x79

    if-eq v14, v15, :cond_b

    goto :goto_5

    :cond_b
    if-eqz v10, :cond_e

    .line 22
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_c
    if-eqz v11, :cond_e

    .line 24
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x2

    .line 25
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    if-eqz v11, :cond_e

    .line 26
    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    move-object v12, v3

    :cond_e
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_f
    move-object/from16 v12, p0

    .line 28
    invoke-static {v12, v0, v1, v7, v6}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->appendLanguageSpecificsToResult(Landroid/content/Context;JZLjava/lang/StringBuffer;)V

    .line 29
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-static {v0, v1, v2, v4, v3}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->update(JI[CLjava/lang/String;)V

    return-object v3
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 3
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    const/16 v2, 0x14

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    .line 6
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/16 v2, 0x10

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    or-int/lit8 v2, v2, 0x11

    .line 7
    :cond_2
    invoke-static {p0, p1, p2, v2}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->formatDateTime2(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDateFormatOrder(Landroid/content/Context;)[C
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sDateOrder:[C

    return-object p0

    .line 3
    :cond_0
    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sOldDateOrderValue:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sOldDateOrderValue:Ljava/lang/String;

    .line 5
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sDateOrder:[C

    .line 6
    :cond_1
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sDateOrder:[C

    return-object p0
.end method

.method private static getDayUnit()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u65e5"

    if-eqz v1, :cond_0

    const-string v2, "\uc77c"

    goto :goto_1

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 5
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 6
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 7
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    sget-object v1, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Ljava/util/Locale;->GERMANY:Ljava/util/Locale;

    .line 9
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, "."

    :cond_5
    :goto_1
    return-object v2
.end method

.method private static getYearMonthDayStringSet(JZZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    .line 2
    sget-object v4, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sNow:Ljava/util/Calendar;

    monitor-enter v4

    .line 3
    :try_start_0
    sget-object v5, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sNow:Ljava/util/Calendar;

    invoke-virtual {v5, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->isLocaleRTL()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 5
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v5, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "-"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_0

    .line 7
    aget-object v1, v5, v7

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    aget-object v3, v5, v6

    :cond_1
    const/4 v5, 0x1

    if-eqz p2, :cond_2

    .line 9
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->isLocaleRTL()Z

    move-result p2

    if-nez p2, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sNow:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->getYearUnit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz p3, :cond_4

    .line 11
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "MMM"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->isLocaleRTL()Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "d/MM/yyyy E"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p2, 0x2f

    invoke-virtual {p0, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p0, v7, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->getDayUnit()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 17
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p1, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->sNow:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->getDayUnit()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18
    :cond_4
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-virtual {v0, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 20
    invoke-virtual {v0, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 21
    invoke-virtual {v0, v6, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 22
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getYearUnit()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\u5e74"

    if-eqz v1, :cond_0

    const-string v2, "\ub144"

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 5
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    .line 6
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 7
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :cond_3
    :goto_0
    return-object v2
.end method

.method public static isLocaleRTL()Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "he"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "yi"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "iw"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ji"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
