.class public final enum Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;
.super Ljava/lang/Enum;
.source "NmsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/constants/NmsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RcsObjectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field public static final enum CIF:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field public static final enum GROUP_INFO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field public static final enum MESSAGE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field public static final enum RELAY_DATA:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

.field public static final enum STATE_MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const-string v1, "MESSAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->MESSAGE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const-string v1, "GROUP_INFO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->GROUP_INFO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const-string v1, "STATE_MSG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->STATE_MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    .line 4
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const-string v1, "RELAY_DATA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->RELAY_DATA:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    .line 5
    new-instance v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const-string v1, "CIF"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->CIF:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    .line 6
    sget-object v7, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->MESSAGE:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    aput-object v7, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->GROUP_INFO:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->STATE_MSG:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->RELAY_DATA:Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->$VALUES:[Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/constants/NmsConstants$RcsObjectType;

    return-object v0
.end method
