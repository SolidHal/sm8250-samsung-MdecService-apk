.class public Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;
.super Ljava/lang/Object;
.source "CustomCursorJoiner.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;,
        Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;,
        Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;


# instance fields
.field private mColumnsLeft:[I

.field private mColumnsRight:[I

.field private mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

.field private mCompareResultIsValid:Z

.field private mCursorLeft:Landroid/database/Cursor;

.field private mCursorRight:Landroid/database/Cursor;

.field private mIntValues:[I

.field private mLongValues:[J

.field private mStringValues:[Ljava/lang/String;

.field private mType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_3

    .line 3
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    .line 4
    iput-object p3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    .line 5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResultIsValid:Z

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    .line 9
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsRight:[I

    .line 10
    iput-object p5, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    .line 11
    sget-object p1, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$1;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$JoinColumnType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, p3, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    array-length p1, p1

    mul-int/2addr p1, p3

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mLongValues:[J

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    array-length p1, p1

    mul-int/2addr p1, p3

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mIntValues:[I

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    array-length p1, p1

    mul-int/2addr p1, p3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    .line 15
    :goto_0
    sput-object p6, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    return-void

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "you must have the same number of columns on the left and right, "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private buildColumnIndiciesArray(Landroid/database/Cursor;[Ljava/lang/String;)[I
    .locals 3

    .line 1
    array-length v0, p2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p2, v1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static varargs compareInts([I)I
    .locals 7

    .line 1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 3
    aget v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget v3, p0, v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_3

    .line 4
    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->DESC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    if-gez v2, :cond_0

    move v5, v6

    :cond_0
    return v5

    .line 5
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    if-ne v3, v4, :cond_3

    if-lez v2, :cond_2

    move v5, v6

    :cond_2
    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v0

    .line 6
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "you must specify an even number of values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs compareLongs([J)I
    .locals 7

    .line 1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 3
    aget-wide v2, p0, v1

    add-int/lit8 v4, v1, 0x1

    aget-wide v4, p0, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 4
    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->DESC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    if-gez v2, :cond_0

    move v5, v6

    :cond_0
    return v5

    .line 5
    :cond_1
    sget-object v3, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->sOrderType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    sget-object v4, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    if-ne v3, v4, :cond_3

    if-lez v2, :cond_2

    move v5, v6

    :cond_2
    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v0

    .line 6
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "you must specify an even number of values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static varargs compareStrings([Ljava/lang/String;)I
    .locals 6

    .line 1
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 3
    aget-object v2, p0, v1

    const/4 v3, -0x1

    if-nez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 4
    aget-object v2, p0, v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 5
    aget-object v4, p0, v2

    const/4 v5, 0x1

    if-nez v4, :cond_2

    return v5

    .line 6
    :cond_2
    aget-object v4, p0, v1

    aget-object v2, p0, v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    if-gez v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    return v3

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_5
    return v0

    .line 7
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "you must specify an even number of values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private incrementCursors()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResultIsValid:Z

    if-eqz v0, :cond_3

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$1;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$Result:[I

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    :goto_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResultIsValid:Z

    :cond_3
    return-void
.end method

.method private static populateIntValues([ILandroid/database/Cursor;[II)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 2
    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static populateLongValues([JLandroid/database/Cursor;[II)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 2
    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static populateStringValues([Ljava/lang/String;Landroid/database/Cursor;[II)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p3

    .line 2
    aget v2, p2, v0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResultIsValid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    .line 2
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$1;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$Result:[I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    .line 4
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value for mCompareResult, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1

    .line 6
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1

    .line 7
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v1, v2

    :cond_b
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->incrementCursors()V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    .line 6
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$1;->$SwitchMap$com$samsung$android$mdecservice$nms$util$CustomCursorJoiner$JoinColumnType:[I

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mType:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 7
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateStringValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 8
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateStringValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 9
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mLongValues:[J

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateLongValues([JLandroid/database/Cursor;[II)V

    .line 11
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mLongValues:[J

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateLongValues([JLandroid/database/Cursor;[II)V

    .line 12
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mLongValues:[J

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->compareLongs([J)I

    move-result v0

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mIntValues:[I

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateIntValues([ILandroid/database/Cursor;[II)V

    .line 14
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mIntValues:[I

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateIntValues([ILandroid/database/Cursor;[II)V

    .line 15
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mIntValues:[I

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->compareInts([I)I

    move-result v0

    goto :goto_0

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorLeft:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsLeft:[I

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateStringValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCursorRight:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mColumnsRight:[I

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->populateStringValues([Ljava/lang/String;Landroid/database/Cursor;[II)V

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mStringValues:[Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->compareStrings([Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    goto :goto_1

    .line 19
    :cond_3
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;->RIGHT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    goto :goto_1

    .line 20
    :cond_4
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;->BOTH:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    goto :goto_1

    .line 21
    :cond_5
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;->LEFT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 22
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;->LEFT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    goto :goto_1

    .line 23
    :cond_7
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;->RIGHT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    iput-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    .line 24
    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResultIsValid:Z

    .line 25
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->mCompareResult:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    return-object v0

    .line 26
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "you must only call next() when hasNext() is true"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;->next()Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
