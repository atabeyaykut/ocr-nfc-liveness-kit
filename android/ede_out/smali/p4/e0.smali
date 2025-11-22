.class public final Lp4/e0;
.super Lp4/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/h0;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lp4/l0;


# direct methods
.method public constructor <init>(Lp4/l0;)V
    .locals 0

    iput-object p1, p0, Lp4/e0;->f:Lp4/l0;

    invoke-direct {p0, p1}, Lp4/h0;-><init>(Lp4/l0;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lp4/j0;

    iget-object v1, p0, Lp4/e0;->f:Lp4/l0;

    invoke-direct {v0, v1, p1}, Lp4/j0;-><init>(Lp4/l0;I)V

    return-object v0
.end method
