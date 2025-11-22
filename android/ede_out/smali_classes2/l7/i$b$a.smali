.class public final Ll7/i$b$a;
.super Ll7/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll7/i$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll7/i<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll7/i$b;)V
    .locals 0

    iget-object p1, p1, Ll7/i$b;->a:Ll7/i;

    invoke-direct {p0, p1}, Ll7/i$d;-><init>(Ll7/i;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ll7/i$d;->a()Ll7/i$e;

    move-result-object v0

    return-object v0
.end method
