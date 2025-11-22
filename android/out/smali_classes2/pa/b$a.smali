.class public final Lpa/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpa/b;-><init>(Lbc/l;Llb/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lx9/a<",
        "Lcc/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpa/b;


# direct methods
.method public constructor <init>(Lpa/b;)V
    .locals 0

    iput-object p1, p0, Lpa/b$a;->a:Lpa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lpa/b$a;->a:Lpa/b;

    invoke-virtual {v0}, Lpa/b;->C0()Lvb/i;

    move-result-object v1

    new-instance v2, Lpa/a;

    invoke-direct {v2, p0}, Lpa/a;-><init>(Lpa/b$a;)V

    invoke-static {v0, v1, v2}, Lcc/q1;->p(Lma/g;Lvb/i;Lx9/l;)Lcc/m0;

    move-result-object v0

    return-object v0
.end method
