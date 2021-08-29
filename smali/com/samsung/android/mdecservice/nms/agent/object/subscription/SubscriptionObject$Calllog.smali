.class public Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject$Calllog;
.super Ljava/lang/Object;
.source "SubscriptionObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdecservice/nms/agent/object/subscription/SubscriptionObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Calllog"
.end annotation


# static fields
.field public static final FILTER_CRITERION_VALUE_XCALLLOG:Ljava/lang/String; = "x-call-log"

.field public static final FILTER_CRITERION_VALUE_XMESSAGELOG:Ljava/lang/String; = "x-msg-log"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
