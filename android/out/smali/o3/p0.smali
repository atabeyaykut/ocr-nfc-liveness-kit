.class public final Lo3/p0;
.super Lf5/d;
.source "SourceFile"

# interfaces
.implements Ln3/d$a;
.implements Ln3/d$b;


# static fields
.field public static final h:Le5/b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Le5/b;

.field public final d:Ljava/util/Set;

.field public final e:Lr3/e;

.field public f:Le5/f;

.field public g:Lo3/o0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Le5/e;->a:Le5/b;

    sput-object v0, Lo3/p0;->h:Le5/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh4/i;Lr3/e;)V
    .locals 0
    .param p3    # Lr3/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lf5/d;-><init>()V

    iput-object p1, p0, Lo3/p0;->a:Landroid/content/Context;

    iput-object p2, p0, Lo3/p0;->b:Landroid/os/Handler;

    iput-object p3, p0, Lo3/p0;->e:Lr3/e;

    iget-object p1, p3, Lr3/e;->b:Ljava/util/Set;

    iput-object p1, p0, Lo3/p0;->d:Ljava/util/Set;

    sget-object p1, Lo3/p0;->h:Le5/b;

    iput-object p1, p0, Lo3/p0;->c:Le5/b;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lo3/p0;->f:Le5/f;

    invoke-interface {p1, p0}, Le5/f;->i(Lf5/f;)V

    return-void
.end method

.method public final onConnectionFailed(Lm3/b;)V
    .locals 1
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lo3/p0;->g:Lo3/o0;

    check-cast v0, Lo3/d0;

    invoke-virtual {v0, p1}, Lo3/d0;->b(Lm3/b;)V

    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p1, p0, Lo3/p0;->f:Le5/f;

    invoke-interface {p1}, Ln3/a$e;->h()V

    return-void
.end method
