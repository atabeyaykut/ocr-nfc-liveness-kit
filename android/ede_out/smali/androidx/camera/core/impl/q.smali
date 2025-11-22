.class public final synthetic Landroidx/camera/core/impl/q;
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

    iput p1, p0, Landroidx/camera/core/impl/q;->a:I

    iput-object p2, p0, Landroidx/camera/core/impl/q;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/camera/core/impl/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Landroidx/camera/core/impl/q;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/camera/core/impl/q;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/camera/core/impl/q;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    check-cast v2, Landroidx/core/content/res/ResourcesCompat$FontCallback;

    .line 12
    .line 13
    check-cast v1, Landroid/graphics/Typeface;

    .line 14
    .line 15
    invoke-static {v2, v1}, Landroidx/core/content/res/ResourcesCompat$FontCallback;->b(Landroidx/core/content/res/ResourcesCompat$FontCallback;Landroid/graphics/Typeface;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_1
    check-cast v2, Landroidx/camera/core/impl/DeferrableSurface;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1, v2}, Landroidx/camera/core/impl/DeferrableSurface;->a(Ljava/lang/String;Landroidx/camera/core/impl/DeferrableSurface;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :goto_0
    check-cast v2, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 28
    .line 29
    check-cast v1, Landroid/app/job/JobParameters;

    .line 30
    .line 31
    sget v0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->a:I

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {v2, v1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
