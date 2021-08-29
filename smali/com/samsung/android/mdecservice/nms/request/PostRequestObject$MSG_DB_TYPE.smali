.class final enum Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;
.super Ljava/lang/Enum;
.source "PostRequestObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/request/PostRequestObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MSG_DB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum CMAS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum MMS_ADDR:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

.field public static final enum WAP:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "PARTS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "MMS_ADDR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MMS_ADDR:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "WAP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->WAP:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "CMAS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CMAS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 6
    new-instance v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const-string v1, "CONVERSATION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CONVERSATION:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    .line 7
    sget-object v8, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MESSAGE:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    aput-object v8, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->PARTS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->MMS_ADDR:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->WAP:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->CMAS:Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->$VALUES:[Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->$VALUES:[Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/request/PostRequestObject$MSG_DB_TYPE;

    return-object v0
.end method
