.class public interface abstract Le/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b$b;
    }
.end annotation


# static fields
.field public static final a:Le/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/b$a;

    invoke-direct {v0}, Le/b$a;-><init>()V

    sput-object v0, Le/b;->a:Le/b$a;

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract b()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract c()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract d()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract e()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract f()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract g()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract h()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract i()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract j()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract k()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract l()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract m()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract n()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract o()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onCancel()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onStart()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onSuccess()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
