.class public final Ls4/s;
.super Lp4/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp4/h0;"
    }
.end annotation


# instance fields
.field public final synthetic f:Ls4/x;


# direct methods
.method public constructor <init>(Ls4/x;)V
    .locals 0

    iput-object p1, p0, Ls4/s;->f:Ls4/x;

    invoke-direct {p0, p1}, Lp4/h0;-><init>(Ls4/x;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ls4/w;

    iget-object v1, p0, Ls4/s;->f:Ls4/x;

    invoke-direct {v0, v1, p1}, Ls4/w;-><init>(Ls4/x;I)V

    return-object v0
.end method
