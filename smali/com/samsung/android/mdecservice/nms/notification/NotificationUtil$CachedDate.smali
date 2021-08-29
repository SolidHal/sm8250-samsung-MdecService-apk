.class Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedDate"
.end annotation


# static fields
.field private static mLocale:Ljava/lang/String; = null

.field private static s24HR:Z = false

.field private static sDateTime:Ljava/lang/String; = null

.field private static sFormatFlags:I = -0x1

.field private static sOrder:[C = null

.field private static sWhen:J = -0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 1
    sput-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sOrder:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(JI[C)Z
    .locals 2

    .line 1
    sget-wide v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sWhen:J

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    if-nez p3, :cond_2

    .line 2
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sOrder:[C

    if-nez p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1

    .line 3
    :cond_2
    sget p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sFormatFlags:I

    if-eq p2, p0, :cond_3

    return p1

    :cond_3
    move p0, p1

    .line 4
    :goto_0
    array-length p2, p3

    if-ge p0, p2, :cond_5

    .line 5
    aget-char p2, p3, p0

    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sOrder:[C

    aget-char v0, v0, p0

    if-eq p2, v0, :cond_4

    return p1

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 6
    :cond_5
    sget-boolean p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->s24HR:Z

    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p2

    if-eq p0, p2, :cond_6

    return p1

    .line 7
    :cond_6
    sget-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->mLocale:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getDateTime()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sDateTime:Ljava/lang/String;

    return-object v0
.end method

.method public static update(JI[CLjava/lang/String;)V
    .locals 0

    .line 1
    sput-wide p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sWhen:J

    .line 2
    sput p2, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sFormatFlags:I

    .line 3
    sput-object p3, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sOrder:[C

    .line 4
    sput-object p4, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->sDateTime:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/samsung/android/mdecservice/nms/notification/NotificationManager;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->s24HR:Z

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/mdecservice/nms/notification/NotificationUtil$CachedDate;->mLocale:Ljava/lang/String;

    return-void
.end method
