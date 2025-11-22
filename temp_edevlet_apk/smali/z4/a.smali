.class public final Lz4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lz3/b;


# direct methods
.method public constructor <init>(Lz3/b;)V
    .locals 0
    .param p1    # Lz3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/r;->i(Ljava/lang/Object;)V

    iput-object p1, p0, Lz4/a;->a:Lz3/b;

    return-void
.end method
