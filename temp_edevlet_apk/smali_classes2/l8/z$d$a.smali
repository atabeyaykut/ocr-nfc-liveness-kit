.class public final Ll8/z$d$a;
.super Ll8/z$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll8/z$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll8/z<",
        "TK;TV;>.e<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll8/z$d;)V
    .locals 0

    iget-object p1, p1, Ll8/z$d;->a:Ll8/z;

    invoke-direct {p0, p1}, Ll8/z$e;-><init>(Ll8/z;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ll8/z$e;->a()Ll8/z$f;

    move-result-object v0

    iget-object v0, v0, Ll8/z$f;->f:Ljava/lang/Object;

    return-object v0
.end method
