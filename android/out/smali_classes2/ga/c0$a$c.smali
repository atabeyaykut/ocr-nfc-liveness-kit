.class public final Lga/c0$a$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/c0$a;-><init>(Lga/c0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ll9/k<",
        "+",
        "Lkb/f;",
        "+",
        "Lgb/k;",
        "+",
        "Lkb/e;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/c0$a;


# direct methods
.method public constructor <init>(Lga/c0$a;)V
    .locals 0

    iput-object p1, p0, Lga/c0$a$c;->a:Lga/c0$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lga/c0$a$c;->a:Lga/c0$a;

    invoke-static {v0}, Lga/c0$a;->a(Lga/c0$a;)Lra/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lra/e;->b:Lfb/a;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lfb/a;->c:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v2, v0, Lfb/a;->e:[Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lkb/h;->h([Ljava/lang/String;[Ljava/lang/String;)Ll9/g;

    move-result-object v1

    iget-object v2, v1, Ll9/g;->a:Ljava/lang/Object;

    check-cast v2, Lkb/f;

    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    check-cast v1, Lgb/k;

    new-instance v3, Ll9/k;

    iget-object v0, v0, Lfb/a;->b:Lkb/e;

    invoke-direct {v3, v2, v1, v0}, Ll9/k;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method
