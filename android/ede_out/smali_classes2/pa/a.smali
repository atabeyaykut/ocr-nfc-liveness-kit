.class public final Lpa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/l<",
        "Ldc/f;",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/b$a;


# direct methods
.method public constructor <init>(Lpa/b$a;)V
    .locals 0

    iput-object p1, p0, Lpa/a;->a:Lpa/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ldc/f;

    .line 2
    .line 3
    iget-object v0, p0, Lpa/a;->a:Lpa/b$a;

    .line 4
    .line 5
    iget-object v1, v0, Lpa/b$a;->a:Lpa/b;

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ldc/f;->v(Lma/g;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, v0, Lpa/b$a;->a:Lpa/b;

    .line 11
    .line 12
    iget-object p1, p1, Lpa/b;->b:Lbc/i;

    .line 13
    .line 14
    invoke-interface {p1}, Lx9/a;->invoke()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcc/m0;

    .line 19
    .line 20
    return-object p1
.end method
