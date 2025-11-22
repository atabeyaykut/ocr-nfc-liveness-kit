.class public final Lga/n$a$k;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/n$a;-><init>(Lga/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Ljava/util/Collection<",
        "+",
        "Lga/h<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/n<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/n$a$k;->a:Lga/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lga/n$a$k;->a:Lga/n;

    invoke-virtual {v0}, Lga/n;->A()Lvb/i;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lga/s;->q(Lvb/i;I)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
