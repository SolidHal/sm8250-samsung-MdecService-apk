.class public final enum Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;
.super Ljava/lang/Enum;
.source "MdecInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/mdec/api/MdecInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddPdMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

.field public static final enum ChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

.field public static final enum NotChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    const-string v1, "ChangePd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->ChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    new-instance v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    const-string v1, "NotChangePd"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->NotChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    .line 2
    sget-object v4, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->ChangePd:Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->$VALUES:[Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/mdec/api/MdecInterface$AddPdMode;

    return-object v0
.end method
