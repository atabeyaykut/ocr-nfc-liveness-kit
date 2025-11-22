.class public final Lfb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leb/s$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfb/b$a;,
        Lfb/b$c;,
        Lfb/b$d;,
        Lfb/b$b;
    }
.end annotation


# static fields
.field public static final i:Z

.field public static final j:Ljava/util/HashMap;


# instance fields
.field public a:[I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[Ljava/lang/String;

.field public e:[Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Lfb/a$a;

.field public h:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "kotlin.ignore.old.metadata"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lfb/b;->i:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lfb/b;->j:Ljava/util/HashMap;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.jvm.internal.KotlinClass"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v2, Lfb/a$a;->d:Lfb/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.jvm.internal.KotlinFileFacade"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v2, Lfb/a$a;->e:Lfb/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClass"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v2, Lfb/a$a;->g:Lfb/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.jvm.internal.KotlinMultifileClassPart"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v2, Lfb/a$a;->h:Lfb/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Llb/c;

    const-string v2, "kotlin.jvm.internal.KotlinSyntheticClass"

    invoke-direct {v1, v2}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Llb/b;->l(Llb/c;)Llb/b;

    move-result-object v1

    sget-object v2, Lfb/a$a;->f:Lfb/a$a;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfb/b;->a:[I

    iput-object v0, p0, Lfb/b;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lfb/b;->c:I

    iput-object v0, p0, Lfb/b;->d:[Ljava/lang/String;

    iput-object v0, p0, Lfb/b;->e:[Ljava/lang/String;

    iput-object v0, p0, Lfb/b;->f:[Ljava/lang/String;

    iput-object v0, p0, Lfb/b;->g:Lfb/a$a;

    iput-object v0, p0, Lfb/b;->h:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Llb/b;Lra/b;)Leb/s$a;
    .locals 1

    invoke-virtual {p1}, Llb/b;->b()Llb/c;

    move-result-object p2

    sget-object v0, Lva/x;->a:Llb/c;

    invoke-virtual {p2, v0}, Llb/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lfb/b$b;

    invoke-direct {p1, p0}, Lfb/b$b;-><init>(Lfb/b;)V

    return-object p1

    :cond_0
    sget-object v0, Lva/x;->o:Llb/c;

    invoke-virtual {p2, v0}, Llb/c;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Lfb/b$c;

    invoke-direct {p1, p0}, Lfb/b$c;-><init>(Lfb/b;)V

    return-object p1

    :cond_1
    sget-boolean p2, Lfb/b;->i:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    return-object v0

    :cond_2
    iget-object p2, p0, Lfb/b;->g:Lfb/a$a;

    if-eqz p2, :cond_3

    return-object v0

    :cond_3
    sget-object p2, Lfb/b;->j:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfb/a$a;

    if-eqz p1, :cond_4

    iput-object p1, p0, Lfb/b;->g:Lfb/a$a;

    new-instance p1, Lfb/b$d;

    invoke-direct {p1, p0}, Lfb/b$d;-><init>(Lfb/b;)V

    return-object p1

    :cond_4
    return-object v0
.end method
