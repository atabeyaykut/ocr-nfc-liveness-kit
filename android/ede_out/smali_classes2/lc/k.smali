.class public final Llc/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llc/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Llc/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx9/p;


# direct methods
.method public constructor <init>(Lx9/p;)V
    .locals 0

    iput-object p1, p0, Llc/k;->a:Lx9/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    iget-object v1, p0, Llc/k;->a:Lx9/p;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Llc/i;

    .line 9
    .line 10
    invoke-direct {v0}, Llc/i;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v0, v1}, Lc5/w;->g(Ljava/lang/Object;Lp9/d;Lx9/p;)Lp9/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iput-object v1, v0, Llc/i;->d:Lp9/d;

    .line 18
    .line 19
    return-object v0
.end method
