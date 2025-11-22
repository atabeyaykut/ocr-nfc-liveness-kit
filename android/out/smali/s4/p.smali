.class public final Ls4/p;
.super Ls4/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls4/q<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Ls4/x;

    invoke-direct {v0}, Ls4/x;-><init>()V

    invoke-direct {p0, v0}, Ls4/q;-><init>(Ls4/x;)V

    return-void
.end method
