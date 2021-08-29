.class public final synthetic Lcom/samsung/android/mdecservice/nms/util/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mdecservice/nms/util/a;->b:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/mdecservice/nms/util/a;->b:Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;

    invoke-static {v0}, Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;->a(Lcom/samsung/android/mdecservice/nms/util/TimeMeasure;)V

    return-void
.end method
