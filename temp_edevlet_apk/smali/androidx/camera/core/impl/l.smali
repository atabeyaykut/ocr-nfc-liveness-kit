.class public final synthetic Landroidx/camera/core/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/camera/core/impl/l;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/l;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/impl/l;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/l;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/core/impl/l;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Landroidx/camera/core/impl/CameraRepository;

    .line 12
    .line 13
    check-cast v1, Landroidx/camera/core/impl/CameraInternal;

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroidx/camera/core/impl/CameraRepository;->b(Landroidx/camera/core/impl/CameraRepository;Landroidx/camera/core/impl/CameraInternal;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :goto_0
    check-cast v2, Landroidx/work/Data;

    .line 20
    .line 21
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardReadActivity;

    .line 22
    .line 23
    const-string v0, "$approveWorkData"

    .line 24
    .line 25
    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "this$0"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 34
    .line 35
    const-class v3, Ltr/gov/turkiye/edevlet/kapisi/common/worker/nfc/CardVerificationWorker;

    .line 36
    .line 37
    invoke-direct {v0, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "OneTimeWorkRequestBuilde\u2026                 .build()"

    .line 51
    .line 52
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 56
    .line 57
    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
