.class public final Leb/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Leb/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leb/p;

    invoke-direct {v0}, Leb/p;-><init>()V

    sput-object v0, Leb/p;->a:Leb/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Leb/o;
    .locals 9

    const-string v0, "representation"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {}, Ltb/c;->values()[Ltb/c;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v3, :cond_2

    aget-object v7, v2, v4

    invoke-virtual {v7}, Ltb/c;->q()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v6

    :goto_2
    if-eqz v7, :cond_3

    new-instance p0, Leb/o$c;

    invoke-direct {p0, v7}, Leb/o$c;-><init>(Ltb/c;)V

    return-object p0

    :cond_3
    const/16 v0, 0x56

    if-ne v1, v0, :cond_4

    new-instance p0, Leb/o$c;

    invoke-direct {p0, v6}, Leb/o$c;-><init>(Ltb/c;)V

    goto :goto_4

    :cond_4
    const/16 v0, 0x5b

    if-ne v1, v0, :cond_5

    new-instance v0, Leb/o$a;

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Leb/p;->a(Ljava/lang/String;)Leb/o;

    move-result-object p0

    invoke-direct {v0, p0}, Leb/o$a;-><init>(Leb/o;)V

    :goto_3
    move-object p0, v0

    goto :goto_4

    :cond_5
    const/16 v0, 0x4c

    if-ne v1, v0, :cond_6

    const/16 v0, 0x3b

    invoke-static {p0, v0}, Lmc/n;->I(Ljava/lang/CharSequence;C)Z

    :cond_6
    new-instance v0, Leb/o$b;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Leb/o$b;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    return-object p0
.end method

.method public static e(Leb/o;)Ljava/lang/String;
    .locals 2

    const-string v0, "type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Leb/o$a;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Leb/o$a;

    iget-object p0, p0, Leb/o$a;->i:Leb/o;

    invoke-static {p0}, Leb/p;->e(Leb/o;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    instance-of v0, p0, Leb/o$c;

    if-eqz v0, :cond_2

    check-cast p0, Leb/o$c;

    iget-object p0, p0, Leb/o$c;->i:Ltb/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ltb/c;->q()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    :cond_1
    const-string p0, "V"

    goto :goto_1

    :cond_2
    instance-of v0, p0, Leb/o$b;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p0, Leb/o$b;

    iget-object p0, p0, Leb/o$b;->i:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Lj7/p;

    invoke-direct {p0}, Lj7/p;-><init>()V

    throw p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Leb/o$b;
    .locals 1

    .line 1
    const-string v0, "internalName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Leb/o$b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Leb/o$b;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public final c(Lja/l;)Leb/o$c;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, Lj7/p;

    .line 9
    .line 10
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1

    .line 14
    :pswitch_0
    sget-object p1, Leb/o;->h:Leb/o$c;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_1
    sget-object p1, Leb/o;->g:Leb/o$c;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_2
    sget-object p1, Leb/o;->f:Leb/o$c;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_3
    sget-object p1, Leb/o;->e:Leb/o$c;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_4
    sget-object p1, Leb/o;->d:Leb/o$c;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_5
    sget-object p1, Leb/o;->c:Leb/o$c;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_6
    sget-object p1, Leb/o;->b:Leb/o$c;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_7
    sget-object p1, Leb/o;->a:Leb/o$c;

    .line 36
    .line 37
    :goto_0
    return-object p1

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Leb/o$b;
    .locals 2

    new-instance v0, Leb/o$b;

    const-string v1, "java/lang/Class"

    invoke-direct {v0, v1}, Leb/o$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    check-cast p1, Leb/o;

    invoke-static {p1}, Leb/p;->e(Leb/o;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
