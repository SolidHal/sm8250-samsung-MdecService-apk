.class Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;
.super Ljava/util/ArrayList;
.source "RcsQueryBuilder2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;->sendBroadCastToAppForRelayRcs(Ljava/lang/String;Lcom/samsung/android/mdecservice/nms/agent/object/rcs/RcsMessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;->this$0:Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2;

    iput-object p2, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/mdecservice/nms/querybuilder/RcsQueryBuilder2$2;->val$bundle:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
