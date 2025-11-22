.class public final Lac/o;
.super Lac/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lbc/l;Lx9/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbc/l;",
            "Lx9/a<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lna/c;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lac/a;-><init>(Lbc/l;Lx9/a;)V

    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
