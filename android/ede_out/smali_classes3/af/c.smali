.class public abstract Laf/c;
.super Lr0/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lr0/p;",
        ">",
        "Lr0/z<",
        "TS;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr0/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lr0/z;-><init>(Lr0/p;)V

    return-void
.end method
