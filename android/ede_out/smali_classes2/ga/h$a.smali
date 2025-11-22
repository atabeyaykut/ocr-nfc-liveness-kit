.class public final Lga/h$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lga/h;-><init>()V
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
.field public final synthetic a:Lga/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lga/h<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lga/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lga/h<",
            "+TR;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lga/h$a;->a:Lga/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lga/h$a;->a:Lga/h;

    invoke-virtual {v0}, Lga/h;->o()Lma/b;

    move-result-object v0

    invoke-static {v0}, Lga/z0;->d(Lna/a;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
