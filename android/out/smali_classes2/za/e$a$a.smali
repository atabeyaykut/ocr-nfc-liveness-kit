.class public final Lza/e$a$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/e$a;-><init>(Lza/e;)V
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
        "Lma/w0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lza/e;


# direct methods
.method public constructor <init>(Lza/e;)V
    .locals 0

    iput-object p1, p0, Lza/e$a$a;->a:Lza/e;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lza/e$a$a;->a:Lza/e;

    invoke-static {v0}, Lma/x0;->b(Lma/h;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
