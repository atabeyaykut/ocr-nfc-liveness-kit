.class public final Lpa/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lcc/c1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lbc/l;

.field public final synthetic b:Lma/u0;

.field public final synthetic c:Lpa/k;


# direct methods
.method public constructor <init>(Lpa/k;Lbc/l;Lma/u0;)V
    .locals 0

    iput-object p1, p0, Lpa/h;->c:Lpa/k;

    iput-object p2, p0, Lpa/h;->a:Lbc/l;

    iput-object p3, p0, Lpa/h;->b:Lma/u0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lpa/k$a;

    iget-object v1, p0, Lpa/h;->b:Lma/u0;

    iget-object v2, p0, Lpa/h;->c:Lpa/k;

    iget-object v3, p0, Lpa/h;->a:Lbc/l;

    invoke-direct {v0, v2, v3, v1}, Lpa/k$a;-><init>(Lpa/k;Lbc/l;Lma/u0;)V

    return-object v0
.end method
