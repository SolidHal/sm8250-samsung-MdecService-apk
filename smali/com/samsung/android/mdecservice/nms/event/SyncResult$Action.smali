.class public final enum Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;
.super Ljava/lang/Enum;
.source "SyncResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/event/SyncResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

.field public static final enum ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

.field public static final enum ADDandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

.field public static final enum FLUSHandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 2
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const-string v1, "ADDandSEND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADDandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 3
    new-instance v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const-string v1, "FLUSHandSEND"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->FLUSHandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    .line 4
    sget-object v5, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADD:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    aput-object v5, v1, v2

    sget-object v2, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->ADDandSEND:Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->$VALUES:[Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->$VALUES:[Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    invoke-virtual {v0}, [Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mdecservice/nms/event/SyncResult$Action;

    return-object v0
.end method
