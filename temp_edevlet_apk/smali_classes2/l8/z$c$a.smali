.class public final Ll8/z$c$a;
.super Ll8/z$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/z$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/z<",
        "TK;TV;>.e<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll8/z$c;)V
    .locals 0

    iget-object p1, p1, Ll8/z$c;->a:Ll8/z;

    invoke-direct {p0, p1}, Ll8/z$e;-><init>(Ll8/z;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll8/z$e;->a()Ll8/z$f;

    move-result-object v0

    return-object v0
.end method
