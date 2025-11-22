.class public final Lpc/m$c;
.super Lpc/n;
.source "SourceFile"

# interfaces
.implements Lpc/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/n<",
        "TE;>;",
        "Lpc/u<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lpc/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/m<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpc/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/m<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpc/n;-><init>(Lx9/l;)V

    iput-object p1, p0, Lpc/m$c;->f:Lpc/m;

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-super {p0, p1}, Lpc/n;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lpc/m$c;->f:Lpc/m;

    invoke-static {p1, p0}, Lpc/m;->a(Lpc/m;Lpc/m$c;)V

    :cond_0
    return-void
.end method
