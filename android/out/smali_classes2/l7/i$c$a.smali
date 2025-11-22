.class public final Ll7/i$c$a;
.super Ll7/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/i$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll7/i<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll7/i$c;)V
    .locals 0

    iget-object p1, p1, Ll7/i$c;->a:Ll7/i;

    invoke-direct {p0, p1}, Ll7/i$d;-><init>(Ll7/i;)V

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

    invoke-virtual {p0}, Ll7/i$d;->a()Ll7/i$e;

    move-result-object v0

    iget-object v0, v0, Ll7/i$e;->f:Ljava/lang/Object;

    return-object v0
.end method
