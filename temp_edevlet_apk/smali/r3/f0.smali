.class public final Lr3/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/c$b;


# instance fields
.field public final synthetic a:Lo3/j;


# direct methods
.method public constructor <init>(Lo3/j;)V
    .locals 0

    iput-object p1, p0, Lr3/f0;->a:Lo3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lm3/b;)V
    .locals 1
    .param p1    # Lm3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lr3/f0;->a:Lo3/j;

    invoke-interface {v0, p1}, Lo3/j;->onConnectionFailed(Lm3/b;)V

    return-void
.end method
