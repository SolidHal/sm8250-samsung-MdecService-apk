.class public La/a;
.super Ljava/lang/Object;
.source "OTPSecurity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 7

    const-string v0, "GMT"

    .line 1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    mul-int/lit8 p1, p1, -0x1

    const/16 v1, 0xc

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 4
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x7d0

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/2addr v5, v3

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {p1, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/text/DecimalFormat;

    invoke-direct {p1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    if-gez v1, :cond_0

    mul-int/lit8 v1, v1, -0x1

    :cond_0
    return v1

    :cond_1
    shl-int/lit8 v2, v1, 0x5

    add-int/2addr v2, v1

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x5

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, -0x1

    if-gt v0, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, La/a;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/a;->c(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
