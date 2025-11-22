.class public final Lcc/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lic/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    new-instance v1, Lkotlin/jvm/internal/r;

    .line 5
    .line 6
    sget-object v2, Lkotlin/jvm/internal/w;->a:Lkotlin/jvm/internal/x;

    .line 7
    .line 8
    const-class v3, Lcc/l;

    .line 9
    .line 10
    const-string v4, "descriptors"

    .line 11
    .line 12
    invoke-virtual {v2, v3, v4}, Lkotlin/jvm/internal/x;->c(Ljava/lang/Class;Ljava/lang/String;)Lda/f;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const-string v3, "annotationsAttribute"

    .line 17
    .line 18
    const-string v4, "getAnnotationsAttribute(Lorg/jetbrains/kotlin/types/TypeAttributes;)Lorg/jetbrains/kotlin/types/AnnotationsTypeAttribute;"

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sput-object v0, Lcc/l;->a:[Lda/m;

    .line 31
    .line 32
    sget-object v0, Lcc/a1;->b:Lcc/a1$a;

    .line 33
    .line 34
    const-class v1, Lcc/k;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v2, "kClass"

    .line 44
    .line 45
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v2, Lic/q;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/TypeRegistry;->b(Lda/d;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-direct {v2, v1, v0}, Lic/q;-><init>(Lda/d;I)V

    .line 55
    .line 56
    .line 57
    sput-object v2, Lcc/l;->b:Lic/q;

    .line 58
    .line 59
    return-void
.end method

.method public static final a(Lcc/a1;)Lna/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcc/l;->b(Lcc/a1;)Lcc/k;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcc/k;->a:Lna/h;

    if-nez p0, :cond_1

    :cond_0
    sget-object p0, Lna/h$a;->a:Lna/h$a$a;

    :cond_1
    return-object p0
.end method

.method public static final b(Lcc/a1;)Lcc/k;
    .locals 3

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcc/l;->a:[Lda/m;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 10
    .line 11
    sget-object v1, Lcc/l;->b:Lic/q;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v2, "property"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lic/e;->a:Lic/c;

    .line 22
    .line 23
    iget v0, v1, Lic/a$a;->b:I

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lic/c;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lcc/k;

    .line 30
    .line 31
    return-object p0
.end method
