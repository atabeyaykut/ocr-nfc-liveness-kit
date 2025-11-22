.class public final Loh/a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;


# direct methods
.method public constructor <init>(JLtr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;)V
    .locals 2

    iput-object p3, p0, Loh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Loh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Loh/a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/util/LifecycleAwareTimer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    throw p1
.end method
