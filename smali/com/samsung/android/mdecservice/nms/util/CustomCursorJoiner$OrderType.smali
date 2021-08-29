.class public final enum Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;
.super Ljava/lang/Enum;
.source "CustomCursorJoiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

.field public static final enum ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

.field public static final enum DESC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    const-string v1, "ASC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    new-instance v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    const-string v1, "DESC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->DESC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    .line 2
    sget-object v4, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->ASC:Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/util/CustomCursorJoiner$OrderType;

    return-object v0
.end method
