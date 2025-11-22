.class public final Lfb/c;
.super Lfb/b$a;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lfb/b$b;


# direct methods
.method public constructor <init>(Lfb/b$b;)V
    .locals 0

    iput-object p1, p0, Lfb/c;->b:Lfb/b$b;

    invoke-direct {p0}, Lfb/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final f([Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lfb/c;->b:Lfb/b$b;

    .line 4
    .line 5
    iget-object v0, v0, Lfb/b$b;->a:Lfb/b;

    .line 6
    .line 7
    iput-object p1, v0, Lfb/b;->d:[Ljava/lang/String;

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, 0x3

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    const-string v1, "result"

    .line 15
    .line 16
    aput-object v1, p1, v0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    const-string v1, "kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1"

    .line 20
    .line 21
    aput-object v1, p1, v0

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    const-string v1, "visitEnd"

    .line 25
    .line 26
    aput-object v1, p1, v0

    .line 27
    .line 28
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    .line 29
    .line 30
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
