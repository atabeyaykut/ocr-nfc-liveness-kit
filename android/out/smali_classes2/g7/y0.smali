.class public final synthetic Lg7/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh5/e;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ScheduledFuture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg7/y0;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final b(Lh5/k;)V
    .locals 1
    .param p1    # Lh5/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    iget-object v0, p0, Lg7/y0;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method
