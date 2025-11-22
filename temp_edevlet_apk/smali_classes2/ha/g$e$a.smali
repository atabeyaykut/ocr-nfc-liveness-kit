.class public final Lha/g$e$a;
.super Lha/g$e;
.source "SourceFile"

# interfaces
.implements Lha/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lha/g$e;-><init>(Ljava/lang/reflect/Field;Z)V

    iput-object p2, p0, Lha/g$e$a;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "args"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lha/f$a;->a(Lha/f;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lha/g;->a:Ljava/lang/reflect/Member;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/reflect/Field;

    .line 12
    .line 13
    iget-object v0, p0, Lha/g$e$a;->e:Ljava/lang/Object;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
