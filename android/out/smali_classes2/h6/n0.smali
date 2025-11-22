.class public final Lh6/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh6/j0;

.field public final b:Lh6/j0;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh6/j0;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lh6/j0;-><init>(I)V

    iput-object v0, p0, Lh6/n0;->a:Lh6/j0;

    new-instance v0, Lh6/j0;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Lh6/j0;-><init>(I)V

    iput-object v0, p0, Lh6/n0;->b:Lh6/j0;

    return-void
.end method
