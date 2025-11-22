.class public final Lga/n$a$d;
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
        "Ljava/util/List<",
        "+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lga/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/n<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/n$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/n<",
            "TT;>.a;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/n$a$d;->a:Lga/n$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lga/n$a$d;->a:Lga/n$a;

    invoke-virtual {v0}, Lga/n$a;->a()Lma/e;

    move-result-object v0

    invoke-static {v0}, Lga/z0;->d(Lna/a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
