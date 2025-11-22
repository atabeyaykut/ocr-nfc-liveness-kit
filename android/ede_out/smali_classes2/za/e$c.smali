.class public final Lza/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lza/e;->E()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    check-cast p1, Lma/e;

    invoke-static {p1}, Lsb/b;->g(Lma/j;)Llb/c;

    move-result-object p1

    invoke-virtual {p1}, Llb/c;->b()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lma/e;

    invoke-static {p2}, Lsb/b;->g(Lma/j;)Llb/c;

    move-result-object p2

    invoke-virtual {p2}, Llb/c;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lb8/f;->q(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method
