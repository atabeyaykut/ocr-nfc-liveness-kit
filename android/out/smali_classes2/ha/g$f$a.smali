.class public final Lha/g$f$a;
.super Lha/g$f;
.source "SourceFile"

# interfaces
.implements Lha/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lha/g$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V
    .locals 1

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lha/g$f;-><init>(Ljava/lang/reflect/Field;ZZ)V

    iput-object p3, p0, Lha/g$f$a;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lha/g$f;->c([Ljava/lang/Object;)V

    iget-object v0, p0, Lha/g;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object v1, p0, Lha/g$f$a;->f:Ljava/lang/Object;

    invoke-static {p1}, Lm9/k;->q0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method
