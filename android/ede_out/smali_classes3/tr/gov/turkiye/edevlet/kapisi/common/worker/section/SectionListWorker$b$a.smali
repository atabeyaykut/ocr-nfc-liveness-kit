.class public final Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lnc/a0;",
        "Lp9/d<",
        "-",
        "Landroidx/work/ListenableWorker$Result;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.common.worker.section.SectionListWorker$doWork$2$1"
    f = "SectionListWorker.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;

    invoke-direct {p1, v0, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;Lp9/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lnc/a0;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker$b$a;->a:Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;

    .line 2
    .line 3
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;->a:Lud/d0;

    .line 7
    .line 8
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListAPI;

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lud/d0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "apiClientLogin.create(SectionListAPI::class.java)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v2, p1

    .line 20
    check-cast v2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListAPI;

    .line 21
    .line 22
    const-string v3, "CategorySectionList"

    .line 23
    .line 24
    iget-object v4, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;->b:Ljava/lang/String;

    .line 25
    .line 26
    const-string v5, "android"

    .line 27
    .line 28
    iget-object v6, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v7, v0, Ltr/gov/turkiye/edevlet/kapisi/common/worker/section/SectionListWorker;->d:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface/range {v2 .. v7}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListAPI;->fetchSectionList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lud/b;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    invoke-interface {p1}, Lud/b;->execute()Lud/c0;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 41
    .line 42
    const-string v1, "response"

    .line 43
    .line 44
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/RetrofitExtensionsKt;->bodyOrThrow(Lud/c0;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 60
    .line 61
    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;-><init>(Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 65
    .line 66
    if-eqz p1, :cond_1

    .line 67
    .line 68
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v1, "getDefaultInstance()"

    .line 73
    .line 74
    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;

    .line 78
    .line 79
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Success;->getData()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModel;

    .line 84
    .line 85
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModel;->getSectionListData()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListData;->getContent()Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListContent;->getSectionList()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    check-cast v0, Ljava/lang/Iterable;

    .line 98
    .line 99
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Ltr/gov/turkiye/edevlet/kapisi/data/section/Section;

    .line 114
    .line 115
    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;

    .line 116
    .line 117
    invoke-direct {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/section/Section;->getCode()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    invoke-virtual {v2, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->setCode(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/section/Section;->getName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v2, v1}, Ltr/gov/turkiye/edevlet/kapisi/data/section/SectionListModelRealm;->setName(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1}, Lio/realm/a;->beginTransaction()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v2}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lio/realm/a;->c()V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_0
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_2

    .line 149
    :cond_1
    instance-of p1, v0, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 150
    .line 151
    if-eqz p1, :cond_2

    .line 152
    .line 153
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    goto :goto_2

    .line 158
    :cond_2
    new-instance p1, Lj7/p;

    .line 159
    .line 160
    invoke-direct {p1}, Lj7/p;-><init>()V

    .line 161
    .line 162
    .line 163
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 164
    :catch_1
    move-exception p1

    .line 165
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    :goto_2
    const-string v0, "try {\n                va\u2026t.failure()\n            }"

    .line 173
    .line 174
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    return-object p1
.end method
