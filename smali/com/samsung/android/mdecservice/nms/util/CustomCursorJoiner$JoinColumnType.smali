.class public final enum Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;
.super Ljava/lang/Enum;
.source "CustomCursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JoinColumnType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

.field public static final enum INT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

.field public static final enum LONG:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

.field public static final enum STRING:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->STRING:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    const-string v1, "INT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->INT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    const-string v1, "LONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->LONG:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    .line 4
    sget-object v5, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->STRING:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->INT:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$JoinColumnType;

    return-object v0
.end method
