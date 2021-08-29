.class Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;
.super Ljava/lang/Object;
.source "NmsDatabaseManager2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;->handleRelayResponseObj(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

.field final synthetic val$obj:Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;->val$obj:Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;->this$0:Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2;

    iget-object v0, v0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManagerBase;->mNmsRcsCapaManager:Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;

    iget-object v1, p0, Lcom/samsung/android/mdecservice/nms/NmsDatabaseManager2$4;->val$obj:Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;

    invoke-virtual {v0, v1}, Lcom/samsung/android/mdecservice/nms/capability/NmsRcsCapaManager;->handleRelayResponse(Lcom/samsung/android/mdecservice/nms/object/RelayResponseObject;)V

    return-void
.end method
