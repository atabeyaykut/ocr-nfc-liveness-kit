.class public final Lo3/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/h$a;,
        Lo3/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public volatile b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public volatile c:Lo3/h$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lm4/f;)V
    .locals 2
    .param p1    # Lm4/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lm4/e0;->a:Lm4/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/h;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lo3/h;->b:Ljava/lang/Object;

    new-instance v0, Lo3/h$a;

    const-string v1, "GetCurrentLocation"

    invoke-static {v1}, Lr3/r;->f(Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lo3/h$a;-><init>(Lw4/c;)V

    iput-object v0, p0, Lo3/h;->c:Lo3/h$a;

    return-void
.end method
