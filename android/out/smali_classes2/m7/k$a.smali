.class public final Lm7/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj7/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lj7/h;Lp7/a;)Lj7/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj7/h;",
            "Lp7/a<",
            "TT;>;)",
            "Lj7/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p2, Lp7/a;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const-class p2, Ljava/sql/Date;

    .line 4
    .line 5
    if-ne p1, p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Lm7/k;

    .line 8
    .line 9
    invoke-direct {p1}, Lm7/k;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return-object p1
.end method
